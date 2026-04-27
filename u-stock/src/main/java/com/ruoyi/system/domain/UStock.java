package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 u_stock
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public class UStock extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private String id;

    /** 仓库ID */
    @Excel(name = "仓库ID")
    private String gid;

    /** 商品ID */
    @Excel(name = "商品ID")
    private String sid;

    /** 用户ID */
    @Excel(name = "用户ID")
    private String uid;

    /** 类型1入库2出库 */
    @Excel(name = "类型1入库2出库")
    private String stype;

    /** 数量 */
    @Excel(name = "数量")
    private String snum;

    public String getSlx() {
        return slx;
    }

    public void setSlx(String slx) {
        this.slx = slx;
    }

    @Excel(name = "类型")
    private String slx;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setGid(String gid) 
    {
        this.gid = gid;
    }

    public String getGid() 
    {
        return gid;
    }
    public void setSid(String sid) 
    {
        this.sid = sid;
    }

    public String getSid() 
    {
        return sid;
    }
    public void setUid(String uid) 
    {
        this.uid = uid;
    }

    public String getUid() 
    {
        return uid;
    }
    public void setStype(String stype) 
    {
        this.stype = stype;
    }

    public String getStype() 
    {
        return stype;
    }
    public void setSnum(String snum) 
    {
        this.snum = snum;
    }

    public String getSnum() 
    {
        return snum;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("gid", getGid())
            .append("sid", getSid())
            .append("uid", getUid())
            .append("stype", getStype())
            .append("snum", getSnum())
            .toString();
    }
}
