package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 u_goods
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public class UGoods extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商品编号 */
    private String sid;

    /** 商品名字 */
    @Excel(name = "商品名字")
    private String sName;

    /** 图片路径 */
    @Excel(name = "图片路径")
    private String sImg;

    /** 商品类别 */
    @Excel(name = "商品类别")
    private String sLb;

    /** 添加时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "添加时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date sTime;

    public void setSid(String sid) 
    {
        this.sid = sid;
    }

    public String getSid() 
    {
        return sid;
    }
    public void setsName(String sName) 
    {
        this.sName = sName;
    }

    public String getsName() 
    {
        return sName;
    }
    public void setsImg(String sImg) 
    {
        this.sImg = sImg;
    }

    public String getsImg() 
    {
        return sImg;
    }
    public void setsLb(String sLb) 
    {
        this.sLb = sLb;
    }

    public String getsLb() 
    {
        return sLb;
    }
    public void setsTime(Date sTime) 
    {
        this.sTime = sTime;
    }

    public Date getsTime() 
    {
        return sTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("sid", getSid())
            .append("sName", getsName())
            .append("sImg", getsImg())
            .append("sLb", getsLb())
            .append("sTime", getsTime())
            .toString();
    }
}
