package com.ruoyi.system.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.UStoreMapper;
import com.ruoyi.system.domain.UStore;
import com.ruoyi.system.service.IUStoreService;
import com.ruoyi.common.core.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
@Service
public class UStoreServiceImpl implements IUStoreService 
{
    @Autowired
    private UStoreMapper uStoreMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param uid 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public UStore selectUStoreByUid(String uid)
    {
        return uStoreMapper.selectUStoreByUid(uid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uStore 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<UStore> selectUStoreList(UStore uStore)
    {
        return uStoreMapper.selectUStoreList(uStore);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param uStore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertUStore(UStore uStore)
    {
        return uStoreMapper.insertUStore(uStore);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param uStore 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateUStore(UStore uStore)
    {
        return uStoreMapper.updateUStore(uStore);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param uids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUStoreByUids(String uids)
    {

        try{
            return uStoreMapper.deleteUStoreByUids(Convert.toStrArray(uids));
        }catch (Exception e){
            return 0;
        }



    }




    /**
     * 删除【请填写功能名称】信息
     * 
     * @param uid 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUStoreByUid(String uid)
    {
        return uStoreMapper.deleteUStoreByUid(uid);
    }
}
