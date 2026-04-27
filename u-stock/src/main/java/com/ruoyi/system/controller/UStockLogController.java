package com.ruoyi.system.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.system.domain.*;
import com.ruoyi.system.mapper.SysUserRoleMapper;
import com.ruoyi.system.service.*;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * Controller
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
@Controller
@RequestMapping("/system/log")
public class UStockLogController extends BaseController
{
    private String prefix = "system/log";

    @Autowired
    private IUStockLogService uStockLogService;


    @GetMapping()
    public String log(ModelMap mmap)
    {

        List<UStore> ck = uStoreService.selectUStoreList(null);
        mmap.addAttribute("ck",ck);
        List<UGoods> hw = uGoodsService.selectUGoodsList(null);
        mmap.addAttribute("hw",hw);
        return prefix + "/log";
    }


    @GetMapping("/log")
    public String log2(ModelMap mmap)
    {


        return prefix + "/loga";
    }
    @GetMapping("/logb")
    public String logb(ModelMap mmap)
    {


        return prefix + "/logb";
    }

    @Autowired
    private IUStoreService uStoreService;
    @Autowired
    private IUGoodsService uGoodsService;
    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;
    @Autowired
    private IUStockService uStockService;
    /**
     * 查询【请填写功能名称】列表
     */

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(UStockLog uStockLog)
    {

        Long userid = ShiroUtils.getUserId();
        List<SysUserRole> re = sysUserRoleMapper.selectUserRoleByUserId(userid);
        if(re!=null&&re.size()>0) {
            if (String.valueOf(re.get(0).getRoleId()).equals("1")) {
                startPage();
                List<Map<String,String>> list = uStockLogService.selectUStockLogList(uStockLog);
                return getDataTable(list);
            }else{

                //根据查询当前用户
                uStockLog.setUid(String.valueOf(userid));
                startPage();
                List<Map<String,String>> list = uStockLogService.selectUStockLogList(uStockLog);
                return getDataTable(list);
            }
        }

        return null;




    }

    @PostMapping("/jj")
    @ResponseBody
    public AjaxResult jj(@RequestParam Map<String,String> map){
        UStockLog uStockLog=new UStockLog();
        uStockLog.setId(String.valueOf(map.get("id")));
        uStockLog.setSlx("3");
        uStockLogService.updateUStockLog(uStockLog);
        AjaxResult rez = toAjax(true);
        rez.put("mes","决绝成功");
        return rez;
    }


    @PostMapping("/ty")
    @ResponseBody
    public AjaxResult ty(@RequestParam Map<String,String> map)
    {
        UStockLog reOne = uStockLogService.selectUStockLogById(String.valueOf(map.get("id")));
        String idr=reOne.getUid();
        String stype = map.get("stype");
        if(stype.equals("入库")){
            UStock uStock=new UStock();
            uStock.setSid(String.valueOf(map.get("sid")));
            uStock.setGid(String.valueOf(map.get("gid")));
            uStock.setSnum(String.valueOf(map.get("snum")));
            uStock.setStype("1");

            uStock.setUid(idr);
            uStockService.insertUStock(uStock);


            UStockLog uStockLog=new UStockLog();

            uStockLog.setSlx("2");
            uStockLog.setId(String.valueOf(map.get("id")));
            uStockLogService.updateUStockLog(uStockLog);
            AjaxResult rez = toAjax(true);
            rez.put("mes","入库成功");
            return rez;
        }else{
            //出库
            UStock uStock=new UStock();
            uStock.setSid(String.valueOf(map.get("sid")));
            uStock.setGid(String.valueOf(map.get("gid")));
            Map<String, String> re = uStockService.getUstockCount(uStock);
            String count=String.valueOf(re.get("re"));

            int a=Integer.valueOf(count)-Integer.valueOf(String.valueOf(map.get("snum")));
            if(a>=0){
                //可以出货
                uStock.setSnum(String.valueOf(map.get("snum")));
                uStock.setStype("2");



                Long userid = ShiroUtils.getUserId();
                uStock.setUid(idr);
                uStockService.insertUStock(uStock);

                UStockLog uStockLog=new UStockLog();
                uStockLog.setId(String.valueOf(map.get("id")));
                uStockLog.setSlx("2");
                uStockLog.setUid(idr);
                uStockLogService.updateUStockLog(uStockLog);
                AjaxResult rez = toAjax(true);
                rez.put("mes","出库成功");
                return rez;
            }else{
                AjaxResult rez = toAjax(true);
                rez.put("mes","出库失败，库存不足！");
                return rez;
            }

        }



    }
    /**
     * 导出【请填写功能名称】列表
     */
    @Autowired
    private IULogService uLogService;
    @Log(title = "是否导出日志", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ULog uLog)
    {
        List<ULog> list = uLogService.selectULogList(uLog);
        ExcelUtil<ULog> util = new ExcelUtil<ULog>(ULog.class);
        return util.exportExcel(list, "日志");

    }

    @PostMapping("/tj")
    @ResponseBody
    public AjaxResult tj(ModelMap mmap)
    {



        List<Map<String, String>> list = uLogService.tj("入库");
        List<Map<String, String>> list1 = uLogService.tj("出库");

        JSONArray jsonArray=new JSONArray();
        JSONArray jsonArray1=new JSONArray();
        JSONArray jsonArray2=new JSONArray();
        for (Map<String, String> stringStringMap : list) {

            jsonArray.add(stringStringMap.get("snum"));

            jsonArray2.add(stringStringMap.get("dayStr"));
        }
        for (Map<String, String> stringStringMap : list1) {

            jsonArray1.add(stringStringMap.get("snum"));

        }

        AjaxResult rez = toAjax(true);
        rez.put("rn",jsonArray);
        rez.put("cn",jsonArray1);
        rez.put("da",jsonArray2);
        return rez;

    }
    @PostMapping("/listz")
    @ResponseBody
    public TableDataInfo listz(ULog uLog)
    {
        startPage();
        List<ULog> list = uLogService.selectULogList(uLog);
        return getDataTable(list);
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(UStockLog uStockLog)
    {
        return toAjax(uStockLogService.insertUStockLog(uStockLog));
    }

    /**
     * 修改【请填写功能名称】
     */

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
        UStockLog uStockLog = uStockLogService.selectUStockLogById(id);
        mmap.put("uStockLog", uStockLog);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(UStockLog uStockLog)
    {
        return toAjax(uStockLogService.updateUStockLog(uStockLog));
    }

    /**
     * 删除【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(uStockLogService.deleteUStockLogByIds(ids));
    }
}
