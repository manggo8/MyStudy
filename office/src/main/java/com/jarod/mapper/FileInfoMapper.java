package com.jarod.mapper;

import com.jarod.pojo.FileInfo;

import java.util.List;

public interface FileInfoMapper {
    //查询所有用户条数
    public int getrows();

    //查询所有公共文件
    public List<FileInfo> findpublicfile() throws Exception;

    //插入文件记录
    public int insertFile(FileInfo fileInfo) throws Exception;

    public String findByPath(String path) throws Exception;

}
