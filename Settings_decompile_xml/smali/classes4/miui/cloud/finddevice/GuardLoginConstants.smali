.class public Lmiui/cloud/finddevice/GuardLoginConstants;
.super Ljava/lang/Object;
.source "GuardLoginConstants.java"


# static fields
.field public static final FIND_DEVICE_SID:Ljava/lang/String; = "micloudfind"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
