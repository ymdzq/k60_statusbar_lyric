.class public Lcom/android/settings/haptic/HapticDetailActivity$M2MuffledFragment;
.super Lcom/android/settings/haptic/HapticDetailActivity$BaseHapticFragment;
.source "HapticDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/haptic/HapticDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "M2MuffledFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDetailActivity$BaseHapticFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    .line 320
    sget p0, Lcom/android/settings/R$layout;->fragment_haptic_detail_base:I

    return p0
.end method

.method public getResType()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public getText()I
    .locals 0

    .line 330
    sget p0, Lcom/android/settings/R$string;->solid_text:I

    return p0
.end method
