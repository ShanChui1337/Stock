package com.ruoyi.system.mapper;

import java.util.List;
import java.util.Map;

import com.ruoyi.system.domain.UStockLog;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public interface UStockLogMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public UStockLog selectUStockLogById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uStockLog 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<Map<String,String>> selectUStockLogList(UStockLog uStockLog);

    /**
     * 新增【请填写功能名称】
     * 
     * @param uStockLog 【请填写功能名称】
     * @return 结果
     */
    public int insertUStockLog(UStockLog uStockLog);

    /**
     * 修改【请填写功能名称】
     * 
     * @param uStockLog 【请填写功能名称】
     * @return 结果
     */
    public int updateUStockLog(UStockLog uStockLog);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteUStockLogById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteUStockLogByIds(String[] ids);
}
