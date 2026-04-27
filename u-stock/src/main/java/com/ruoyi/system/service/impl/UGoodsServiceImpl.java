package com.ruoyi.system.service.impl;

import java.beans.Transient;
import java.util.List;
import java.util.Map;

import com.ruoyi.system.domain.UStock;
import com.ruoyi.system.mapper.UStockMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.UGoodsMapper;
import com.ruoyi.system.domain.UGoods;
import com.ruoyi.system.service.IUGoodsService;
import com.ruoyi.common.core.text.Convert;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
@Service
public class UGoodsServiceImpl implements IUGoodsService 
{
    @Autowired
    private UGoodsMapper uGoodsMapper;

    @Autowired
    private UStockMapper uStockMapper;



    /**
     * 查询【请填写功能名称】
     * 
     * @param sid 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public UGoods selectUGoodsBySid(String sid)
    {
        return uGoodsMapper.selectUGoodsBySid(sid);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param uGoods 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<UGoods> selectUGoodsList(UGoods uGoods)
    {
        return uGoodsMapper.selectUGoodsList(uGoods);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param uGoods 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertUGoods(UGoods uGoods)
    {
        return uGoodsMapper.insertUGoods(uGoods);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param uGoods 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateUGoods(UGoods uGoods)
    {
        return uGoodsMapper.updateUGoods(uGoods);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param sids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUGoodsBySids(String sids)
    {
        return uGoodsMapper.deleteUGoodsBySids(Convert.toStrArray(sids));
    }

    @Override
    @Transient
    public int delete(String ids)
    {
        //删除之前需要看仓库
        String[] res = Convert.toStrArray(ids);
        for (String re : res) {
            UStock uStock=new UStock();
            uStock.setSid(re);
            Map<String, String> map = uStockMapper.getUstockCount(uStock);
            if(Integer.valueOf(String.valueOf(map.get("re")))!=0){//如何仓库为0则可以删除 如果为
                //代表总库存为0则可以删除
                TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
                return 0;
            }else{
                uGoodsMapper.deleteUGoodsBySids(Convert.toStrArray(re));
            }

        }
        return 1;
    }



    /**
     * 删除【请填写功能名称】信息
     * 
     * @param sid 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUGoodsBySid(String sid)
    {
        return uGoodsMapper.deleteUGoodsBySid(sid);
    }
}
