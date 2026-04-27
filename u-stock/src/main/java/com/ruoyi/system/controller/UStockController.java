package com.ruoyi.system.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ruoyi.system.domain.SysUserRole;
import com.ruoyi.system.domain.UGoods;
import com.ruoyi.system.domain.UStore;
import com.ruoyi.system.mapper.SysUserRoleMapper;
import com.ruoyi.system.service.IUGoodsService;
import com.ruoyi.system.service.IUStoreService;

import com.ruoyi.common.utils.ShiroUtils;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.UStock;
import com.ruoyi.system.service.IUStockService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
@Controller
@RequestMapping("/system/stock")
public class UStockController extends BaseController
{
    private String prefix = "system/stock";
    private String prefix1 = "system/store";
    @Autowired
    private IUStoreService uStoreService;
    @Autowired
    private IUStockService uStockService;
    @Autowired
    private IUGoodsService uGoodsService;

    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;


    @GetMapping()
    public String stock(ModelMap mmap)
    {
        List<UStore> ck = uStoreService.selectUStoreList(null);
        mmap.addAttribute("ck",ck);
        List<UGoods> hw = uGoodsService.selectUGoodsList(null);
        mmap.addAttribute("hw",hw);
        return prefix + "/stock";
    }

    @GetMapping("/yk")
    public String yk(String sid,String ogid,String snum, ModelMap mmap)
    {
        List<UStore> ck = uStoreService.selectUStoreList(null);
        int a=0;
        List<UStore> ck1=new ArrayList<>();
        for (UStore uStore : ck) {
            if(uStore.getUid().equals(ogid)){
                //ck.remove(a);
            }else{
                ck1.add(uStore);
            }
            a++;
        }


        mmap.addAttribute("ck",ck1);
        mmap.addAttribute("sid",sid);
        mmap.addAttribute("ogid",ogid);
        mmap.addAttribute("snum",snum);
        return prefix1 + "/yk";
    }
    /**
     * 查询【请填写功能名称】列表
     */

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(UStock uStock)
    {
        Long userid = ShiroUtils.getUserId();
        List<SysUserRole> re = sysUserRoleMapper.selectUserRoleByUserId(userid);
        if(re!=null&&re.size()>0) {
            if (String.valueOf(re.get(0).getRoleId()).equals("1")) {
                startPage();
                List<Map<String,String>> list = uStockService.selectUStockList(uStock);
                return getDataTable(list);
            }else{

                //根据查询当前用户
                uStock.setUid(String.valueOf(userid));
                startPage();
                List<Map<String,String>> list = uStockService.selectUStockList(uStock);
                return getDataTable(list);
            }
        }

        return null;




    }

    /**
     * 查询【请填写功能名称】列表
     */

    @PostMapping("/lista")
    @ResponseBody
    public TableDataInfo lista(UStock uStock)
    {
        startPage();
        List<Map<String,String>> list = uStockService.selectUStockList1(uStock);

        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UStock uStock)
    {
       // List<Map<String,String>> list = uStockService.selectUStockList(uStock);
       // ExcelUtil<UStock> util = new ExcelUtil<UStock>(UStock.class);
       // return util.exportExcel(list, "【请填写功能名称】数据");
        return null;
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
    public AjaxResult addSave(UStock uStock)
    {
        return toAjax(uStockService.insertUStock(uStock));
    }


    /**
     * 新增保存【请填写功能名称】
     */

    @Log(title = "入库与出库", businessType = BusinessType.INSERT)
    @PostMapping("/ick")
    @ResponseBody
    public AjaxResult ick(UStock uStock)
    {
        Long userid = ShiroUtils.getUserId();
        uStock.setUid(String.valueOf(userid));
        List<SysUserRole> re = sysUserRoleMapper.selectUserRoleByUserId(userid);
        if(re!=null&&re.size()>0){
            if(String.valueOf(re.get(0).getRoleId()).equals("1")){
                //管理员 不需要审核
                if(uStock.getStype().equals("1")){//入库
                    AjaxResult rez = toAjax(uStockService.insertUStock(uStock));
                    rez.put("mes","入库成功");
                    return rez;
                }else{
                    Map<String, String> count = uStockService.getUstockCount(uStock);
                    int res=0;
                    if(count==null){
                        res=0-Integer.parseInt(uStock.getSnum());
                    }else{
                        res=Integer.valueOf(String.valueOf(count.get("re")))-Integer.parseInt(uStock.getSnum());
                    }
                        if(res>=0){
                        AjaxResult rez = toAjax(uStockService.insertUStock(uStock));
                        rez.put("mes","出库成功");
                        return rez;
                    }else{
                        AjaxResult rez = toAjax(true);
                        rez.put("mes","出库失败，库存不足！");
                        return rez;
                    }

                }

            }else{
                //需要审核 1申请中2同意 3拒绝
                AjaxResult rez = toAjax(uStockService.insertUStockLog(uStock));
                rez.put("mes","提交成功等待管理员审核");
                return rez;

            }
        }

        return toAjax(uStockService.insertUStock(uStock));
    }


    /**
     * 新增保存【请填写功能名称】
     */

    @Log(title = "入库与出库", businessType = BusinessType.INSERT)
    @PostMapping("/ykk")
    @ResponseBody
    public AjaxResult ykk(@RequestParam Map<String,String> map)
    {

        UStock uStock=new UStock();
        //管理员移库 不需要审核
        Long userid = ShiroUtils.getUserId();
        uStock.setUid(String.valueOf(userid));
        List<SysUserRole> re = sysUserRoleMapper.selectUserRoleByUserId(userid);
        if(re!=null&&re.size()>0){
            if(String.valueOf(re.get(0).getRoleId()).equals("1")){
                //管理员 不需要审核
                //先出库 后出库
                String ngid=map.get("ngid");//新仓库
                String sid=map.get("sid");//商品
                String ogid=map.get("ogid");//老仓库
                String snum=map.get("snum");//数量
                String snum1=map.get("snum1");//类型
                UStock uStock1=new UStock();
                uStock1.setGid(ogid);
                uStock1.setSid(sid);
                uStock1.setSnum(snum);
                uStock1.setStype("2");
                uStock1.setUid(String.valueOf(userid));
                uStockService.insertUStock(uStock1);
                uStock1.setStype("1");
                uStock1.setGid(ngid);
                uStockService.insertUStock(uStock1);
                AjaxResult rez = toAjax(1);
                rez.put("mes","移库成功");
                return rez;

            }else{
                //需要审核 1申请中2同意 3拒绝
                AjaxResult rez = toAjax(1);
                rez.put("mes","普通用户不能进行移库");
                return rez;

            }
        }

        return toAjax(uStockService.insertUStock(uStock));
    }


    /**
     * 修改【请填写功能名称】
     */

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap)
    {
        Map<String,String> uStock = uStockService.selectUStockById(id);
        mmap.put("uStock", uStock);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(UStock uStock)
    {
        return toAjax(uStockService.updateUStock(uStock));
    }

    /**
     * 删除【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(uStockService.deleteUStockByIds(ids));
    }
}
