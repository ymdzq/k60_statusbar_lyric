.class final Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;
.super Ljava/lang/Object;
.source "ActionBarShadowController.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/widget/ActionBarShadowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScrollChangeWatcher"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAnchorView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settingslib/widget/ActionBarShadowController;


# direct methods
.method constructor <init>(Lcom/android/settingslib/widget/ActionBarShadowController;Landroid/app/Activity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;->this$0:Lcom/android/settingslib/widget/ActionBarShadowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;->updateDropShadow(Landroid/view/View;)V

    return-void
.end method

.method public updateDropShadow(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method
