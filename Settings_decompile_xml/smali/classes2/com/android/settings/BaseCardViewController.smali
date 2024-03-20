.class public abstract Lcom/android/settings/BaseCardViewController;
.super Ljava/lang/Object;
.source "BaseCardViewController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCard:Lcom/android/settings/CardInfo;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CardInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/settings/BaseCardViewController;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/settings/BaseCardViewController;->mCard:Lcom/android/settings/CardInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 0
    return-void
.end method
