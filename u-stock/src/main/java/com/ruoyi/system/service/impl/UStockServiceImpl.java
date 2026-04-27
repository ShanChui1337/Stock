package com.ruoyi.system.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.UStockMapper;
import com.ruoyi.system.domain.UStock;
import com.ruoyi.system.service.IUStockService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
@Service
public class UStockServiceImpl implements IUStockService 
{
    @Autowired
    private UStockMapper uStockMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public Map<String,String> selectUStockById(String id)
    {
        return uStockMapper.selectUStockById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uStock 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<Map<String,String>> selectUStockList(UStock uStock)
    {
        return uStockMapper.selectUStockList(uStock);
    }
    @Override
    public List<Map<String,String>> selectUStockList1(UStock uStock)
    {
        return uStockMapper.selectUStockList1(uStock);
    }
    /**
     * 新增【请填写功能名称】
     * 
     * @param uStock 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertUStock(UStock uStock)
    {
       int a= uStockMapper.insertUStock(uStock);
        uStockMapper. insertLog(uStock);
        return a;
    }
    @Override
    public int insertUStockLog(UStock uStock)
    {
        return uStockMapper.insertUStockLog(uStock);
    }
    @Override
    public Map<String,String> getUstockCount(UStock uStock){
        return uStockMapper.getUstockCount(uStock);
    }


    /**
     * 修改【请填写功能名称】
     * 
     * @param uStock 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateUStock(UStock uStock)
    {
        return uStockMapper.updateUStock(uStock);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUStockByIds(String ids)
    {
        return uStockMapper.deleteUStockByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUStockById(String id)
    {
        return uStockMapper.deleteUStockById(id);
    }
}
