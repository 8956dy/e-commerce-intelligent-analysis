USE sales_analysis_db;

CREATE TABLE IF NOT EXISTS user (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '用户ID，主键',
    username VARCHAR(50) NOT NULL COMMENT '用户名',
    city VARCHAR(50) NOT NULL COMMENT '用户所在城市，用于地域分析',
    register_time DATETIME NOT NULL COMMENT '用户注册时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表，存储用户基础信息';

CREATE TABLE IF NOT EXISTS product (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '商品ID，主键',
    product_name VARCHAR(100) NOT NULL COMMENT '商品名称',
    category VARCHAR(50) NOT NULL COMMENT '商品分类，如手机、电脑',
    price DECIMAL(10,2) NOT NULL COMMENT '商品单价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表，存储商品信息';

CREATE TABLE IF NOT EXISTS orders (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '订单ID，主键',
    user_id BIGINT NOT NULL COMMENT '用户ID，关联user表',
    total_amount DECIMAL(10,2) NOT NULL COMMENT '订单总金额',
    order_time DATETIME NOT NULL COMMENT '下单时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表，存储每一笔订单';

CREATE TABLE IF NOT EXISTS order_item (
    id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT '明细ID，主键',
    order_id BIGINT NOT NULL COMMENT '订单ID，关联orders表',
    product_id BIGINT NOT NULL COMMENT '商品ID，关联product表',
    quantity INT NOT NULL COMMENT '购买数量',
    total_price DECIMAL(10,2) NOT NULL COMMENT '该商品总金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单明细表，存储每个订单中的商品信息';