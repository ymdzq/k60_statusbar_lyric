.class Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$3;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "MiuiGxzwAnimSettingsInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->smoothScrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$3;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    .line 368
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p0

    add-int/lit8 p0, p0, 0xf

    return p0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 0
    const p0, 0x3e23d70a    # 0.16f

    return p0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method
