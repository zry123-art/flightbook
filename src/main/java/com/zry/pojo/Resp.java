package com.zry.pojo;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Resp {
    private int code;
    private String msg;
    private Object context;
    public Resp(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
