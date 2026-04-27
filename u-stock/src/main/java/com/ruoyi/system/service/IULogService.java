package com.ruoyi.system.service;

import java.util.List;
import java.util.Map;

import com.ruoyi.system.domain.ULog;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public interface IULogService 
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
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteULogByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteULogById(String id);
}
