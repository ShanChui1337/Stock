package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.UStore;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public interface IUStoreService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param uid 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public UStore selectUStoreByUid(String uid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uStore 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<UStore> selectUStoreList(UStore uStore);

    /**
     * 新增【请填写功能名称】
     * 
     * @param uStore 【请填写功能名称】
     * @return 结果
     */
    public int insertUStore(UStore uStore);

    /**
     * 修改【请填写功能名称】
     * 
     * @param uStore 【请填写功能名称】
     * @return 结果
     */
    public int updateUStore(UStore uStore);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param uids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteUStoreByUids(String uids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param uid 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteUStoreByUid(String uid);
}
