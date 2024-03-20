.class public abstract Lcom/android/systemui/plugins/qs/QSIconView;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public disableAnimation()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSIconView;->setAnimationEnabled(Z)V

    .line 3
    return-void
    .line 6
.end method

.method public abstract getIconView()Landroid/view/View;
.end method

.method public abstract setAnimationEnabled(Z)V
.end method

.method public abstract setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
.end method

.method public setIsCustomTile(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateResources()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
