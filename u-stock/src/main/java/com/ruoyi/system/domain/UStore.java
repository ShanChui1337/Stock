package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 u_store
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public class UStore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 仓库ID */
    private String uid;

    /** 仓库名字 */
    @Excel(name = "仓库名字")
    private String sName;

    /** 仓库地址 */
    @Excel(name = "仓库地址")
    private String sAddress;

    /** 仓库描述 */
    @Excel(name = "仓库描述")
    private String sContenct;

    public void setUid(String uid) 
    {
        this.uid = uid;
    }

    public String getUid() 
    {
        return uid;
    }
    public void setsName(String sName) 
    {
        this.sName = sName;
    }

    public String getsName() 
    {
        return sName;
    }
    public void setsAddress(String sAddress) 
    {
        this.sAddress = sAddress;
    }

    public String getsAddress() 
    {
        return sAddress;
    }
    public void setsContenct(String sContenct) 
    {
        this.sContenct = sContenct;
    }

    public String getsContenct() 
    {
        return sContenct;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("uid", getUid())
            .append("sName", getsName())
            .append("sAddress", getsAddress())
            .append("sContenct", getsContenct())
            .toString();
    }
}
