.class public Lmiui/cloud/sync/data/SyncSettingState;
.super Ljava/lang/Object;
.source "SyncSettingState.java"


# instance fields
.field public authority:Ljava/lang/String;

.field public isOn:Z

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
