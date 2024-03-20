.class public Lmiui/cloud/sync/VipInfo;
.super Ljava/lang/Object;
.source "VipInfo.java"


# instance fields
.field public final level:Ljava/lang/String;

.field public final vipName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lmiui/cloud/sync/VipInfo;->vipName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lmiui/cloud/sync/VipInfo;->level:Ljava/lang/String;

    return-void
.end method
