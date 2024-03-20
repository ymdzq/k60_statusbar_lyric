.class public Lmiuix/appcompat/app/strategy/ActionBarConfig;
.super Ljava/lang/Object;
.source "ActionBarConfig.java"


# instance fields
.field public endMenuMaxItemCount:I

.field public expandState:I

.field public overrideUserEndMenuConfig:Z

.field public overrideUserExpandStateConfig:Z

.field public resizable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserExpandStateConfig:Z

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 17
    iput-boolean v1, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 21
    iput-boolean v0, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->overrideUserEndMenuConfig:Z

    const/4 v0, 0x6

    .line 22
    iput v0, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    return-void
.end method
