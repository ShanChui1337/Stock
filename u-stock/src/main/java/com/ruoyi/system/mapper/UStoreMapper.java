package com.ruoyi.system.mapper;

import java.util.List;
import java.util.Map;

import com.ruoyi.system.domain.UStore;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public interface UStoreMapper 
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
     * 删除【请填写功能名称】
     * 
     * @param uid 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteUStoreByUid(String uid);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param uids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteUStoreByUids(String[] uids);

    public Map<String,String> selectCount(String id);
}
