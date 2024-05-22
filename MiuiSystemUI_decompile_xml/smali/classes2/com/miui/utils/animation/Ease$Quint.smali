.class public abstract Lcom/miui/utils/animation/Ease$Quint;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final easeOut:Lcom/miui/utils/animation/Ease$Sine$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/utils/animation/Ease$Sine$1;

    .line 2
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/utils/animation/Ease$Sine$1;-><init>(I)V

    .line 5
    sput-object v0, Lcom/miui/utils/animation/Ease$Quint;->easeOut:Lcom/miui/utils/animation/Ease$Sine$1;

    .line 8
    return-void
    .line 10
.end method
