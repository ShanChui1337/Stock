package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.UGoods;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public interface IUGoodsService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param sid 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public UGoods selectUGoodsBySid(String sid);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uGoods 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<UGoods> selectUGoodsList(UGoods uGoods);

    /**
     * 新增【请填写功能名称】
     * 
     * @param uGoods 【请填写功能名称】
     * @return 结果
     */
    public int insertUGoods(UGoods uGoods);

    /**
     * 修改【请填写功能名称】
     * 
     * @param uGoods 【请填写功能名称】
     * @return 结果
     */
    public int updateUGoods(UGoods uGoods);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param sids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteUGoodsBySids(String sids);

    public int delete(String sids);
    /**
     * 删除【请填写功能名称】信息
     * 
     * @param sid 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteUGoodsBySid(String sid);
}
