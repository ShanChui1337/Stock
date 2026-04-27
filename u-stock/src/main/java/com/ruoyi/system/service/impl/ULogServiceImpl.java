package com.ruoyi.system.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ULogMapper;
import com.ruoyi.system.domain.ULog;
import com.ruoyi.system.service.IULogService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
@Service
public class ULogServiceImpl implements IULogService 
{
    @Autowired
    private ULogMapper uLogMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public ULog selectULogById(String id)
    {
        return uLogMapper.selectULogById(id);
    }
    public List<Map<String,String>> tj(String k){
        return uLogMapper.tj(k);
    }
    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uLog 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<ULog> selectULogList(ULog uLog)
    {
        return uLogMapper.selectULogList(uLog);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param uLog 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertULog(ULog uLog)
    {
        return uLogMapper.insertULog(uLog);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param uLog 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateULog(ULog uLog)
    {
        return uLogMapper.updateULog(uLog);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteULogByIds(String ids)
    {
        return uLogMapper.deleteULogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteULogById(String id)
    {
        return uLogMapper.deleteULogById(id);
    }
}
