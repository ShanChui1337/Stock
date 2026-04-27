package com.ruoyi.system.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.UStockLogMapper;
import com.ruoyi.system.domain.UStockLog;
import com.ruoyi.system.service.IUStockLogService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
@Service
public class UStockLogServiceImpl implements IUStockLogService 
{
    @Autowired
    private UStockLogMapper uStockLogMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public UStockLog selectUStockLogById(String id)
    {
        return uStockLogMapper.selectUStockLogById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uStockLog 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<Map<String,String>> selectUStockLogList(UStockLog uStockLog)
    {
        return uStockLogMapper.selectUStockLogList(uStockLog);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param uStockLog 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertUStockLog(UStockLog uStockLog)
    {
        return uStockLogMapper.insertUStockLog(uStockLog);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param uStockLog 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateUStockLog(UStockLog uStockLog)
    {
        return uStockLogMapper.updateUStockLog(uStockLog);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUStockLogByIds(String ids)
    {
        return uStockLogMapper.deleteUStockLogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUStockLogById(String id)
    {
        return uStockLogMapper.deleteUStockLogById(id);
    }
}
