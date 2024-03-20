.class public Lmiui/cloud/provider/MiuiSettings;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/provider/MiuiSettings$VirtualSim;,
        Lmiui/cloud/provider/MiuiSettings$Telephony;,
        Lmiui/cloud/provider/MiuiSettings$System;,
        Lmiui/cloud/provider/MiuiSettings$Secure;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
