package com.ruoyi.system.controller;

import java.beans.Transient;
import java.util.List;
import java.util.Map;

import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.config.ServerConfig;
import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.common.utils.file.FileUtils;
import com.ruoyi.system.domain.UStock;
import com.ruoyi.system.service.IUStockService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.UGoods;
import com.ruoyi.system.service.IUGoodsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
@Controller
@RequestMapping("/system/goods")
public class UGoodsController extends BaseController
{
    private String prefix = "system/goods";
    @Autowired
    private ServerConfig serverConfig;
    @Autowired
    private IUGoodsService uGoodsService;
    @Autowired
    private IUStockService uStockService;

    @GetMapping()
    public String goods()
    {
        return prefix + "/goods";
    }

    /**
     * 查询【请填写功能名称】列表
     */

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(UGoods uGoods)
    {
        startPage();
        List<UGoods> list = uGoodsService.selectUGoodsList(uGoods);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UGoods uGoods)
    {
        List<UGoods> list = uGoodsService.selectUGoodsList(uGoods);
        ExcelUtil<UGoods> util = new ExcelUtil<UGoods>(UGoods.class);
        return util.exportExcel(list, "【请填写功能名称】数据");
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
    public AjaxResult addSave(UGoods uGoods)
    {
        return toAjax(uGoodsService.insertUGoods(uGoods));

    }
    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/img")
    public String img(String id,ModelMap mmap)
    {
        mmap.addAttribute("id",id);
        return prefix + "/upload";
    }
    /**
     * 通用上传请求（单个）
     */
    @PostMapping("/upload")
    @ResponseBody
    public AjaxResult uploadFile(MultipartFile file, ModelMap mmap, HttpServletRequest request) throws Exception
    {
        try
        {

            // 上传文件路径
            String filePath = RuoYiConfig.getUploadPath();
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file);
            String url = serverConfig.getUrl() + fileName;
            AjaxResult ajax = AjaxResult.success();
            ajax.put("url", url);
            ajax.put("fileName", fileName);
            ajax.put("newFileName", FileUtils.getName(fileName));
            ajax.put("originalFilename", file.getOriginalFilename());



            UGoods uGoods=new UGoods();
            uGoods.setSid(request.getParameter("id"));
            uGoods.setsImg(fileName);
            uGoodsService.updateUGoods(uGoods);

            return ajax;
        }
        catch (Exception e)
        {
            return AjaxResult.error(e.getMessage());
        }
    }
    /**
     * 修改【请填写功能名称】
     */

    @GetMapping("/edit/{sid}")
    public String edit(@PathVariable("sid") String sid, ModelMap mmap)
    {
        UGoods uGoods = uGoodsService.selectUGoodsBySid(sid);
        mmap.put("uGoods", uGoods);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(UGoods uGoods)
    {
        return toAjax(uGoodsService.updateUGoods(uGoods));
    }

    /**
     * 删除【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody

    public AjaxResult remove(String ids)
    {


        try {
            int a=uGoodsService.delete(ids);
            return toAjax(1);
        }catch (Exception e ){

            return toAjax(0);
        }

    }
}
