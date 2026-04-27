package com.ruoyi.system.mapper;

import java.util.List;
import java.util.Map;

import com.ruoyi.system.domain.UStock;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public interface UStockMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public Map<String,String> selectUStockById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uStock 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<Map<String,String>> selectUStockList(UStock uStock);
    public List<Map<String,String>> selectUStockList1(UStock uStock);
    /**
     * 新增【请填写功能名称】
     * 
     * @param uStock 【请填写功能名称】
     * @return 结果
     */
    public int insertUStock(UStock uStock);

    public int  insertLog(UStock uStock);

    public int insertUStockLog(UStock uStock);

    public Map<String,String> getUstockCount(UStock uStock);

    /**
     * 修改【请填写功能名称】
     * 
     * @param uStock 【请填写功能名称】
     * @return 结果
     */
    public int updateUStock(UStock uStock);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteUStockById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteUStockByIds(String[] ids);
}
