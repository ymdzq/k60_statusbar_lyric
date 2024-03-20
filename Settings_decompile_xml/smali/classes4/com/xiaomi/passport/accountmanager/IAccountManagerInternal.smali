.class public interface abstract Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;
.super Ljava/lang/Object;
.source "IAccountManagerInternal.java"


# virtual methods
.method public abstract getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getPassword(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method public abstract getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
.end method

.method public abstract getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
.end method

.method public abstract setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
.end method

.method public abstract setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method
