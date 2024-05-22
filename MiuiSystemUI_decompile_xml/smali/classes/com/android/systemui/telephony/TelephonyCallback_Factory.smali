.class public abstract Lcom/android/systemui/telephony/TelephonyCallback_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance()Lcom/android/systemui/telephony/TelephonyCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/telephony/TelephonyCallback;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/telephony/TelephonyCallback;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method
