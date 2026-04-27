package com.ruoyi.system.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.UStore;
import com.ruoyi.system.service.IUStoreService;
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
@RequestMapping("/system/store")
public class UStoreController extends BaseController
{
    private String prefix = "system/store";

    @Autowired
    private IUStoreService uStoreService;

    //@RequiresPermissions("system:store:view")
    @GetMapping()
    public String store()
    {
        return prefix + "/store";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    //@RequiresPermissions("system:store:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(UStore uStore)
    {
        startPage();
        List<UStore> list = uStoreService.selectUStoreList(uStore);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    //@RequiresPermissions("system:store:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(UStore uStore)
    {
        List<UStore> list = uStoreService.selectUStoreList(uStore);
        ExcelUtil<UStore> util = new ExcelUtil<UStore>(UStore.class);
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
     * 新增【请填写功能名称】
     */
    @GetMapping("/ckxq")
    public String ckxq(String gid,ModelMap mmap)
    {
        mmap.addAttribute("gid",gid);
        return prefix + "/stock";
    }


    /**
     * 新增保存【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(UStore uStore)
    {
        return toAjax(uStoreService.insertUStore(uStore));
    }

    /**
     * 修改【请填写功能名称】
     */

    @GetMapping("/edit/{uid}")
    public String edit(@PathVariable("uid") String uid, ModelMap mmap)
    {
        UStore uStore = uStoreService.selectUStoreByUid(uid);
        mmap.put("uStore", uStore);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(UStore uStore)
    {
        return toAjax(uStoreService.updateUStore(uStore));
    }

    /**
     * 删除【请填写功能名称】
     */

    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(uStoreService.deleteUStoreByUids(ids));
    }
}
