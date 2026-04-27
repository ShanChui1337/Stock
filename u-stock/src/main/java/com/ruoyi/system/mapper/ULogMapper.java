package com.ruoyi.system.mapper;

import java.util.List;
import java.util.Map;

import com.ruoyi.system.domain.ULog;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public interface ULogMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public ULog selectULogById(String id);
    public List<Map<String,String>> tj(String k);
    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uLog 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<ULog> selectULogList(ULog uLog);

    /**
     * 新增【请填写功能名称】
     * 
     * @param uLog 【请填写功能名称】
     * @return 结果
     */
    public int insertULog(ULog uLog);

    /**
     * 修改【请填写功能名称】
     * 
     * @param uLog 【请填写功能名称】
     * @return 结果
     */
    public int updateULog(ULog uLog);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteULogById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteULogByIds(String[] ids);
}
