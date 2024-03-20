.class public Lcom/android/settings/device/MiuiMyDeviceDetailSettings$VerisonSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MiuiMyDeviceDetailSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiMyDeviceDetailSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerisonSpaceItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/MiuiMyDeviceDetailSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$VerisonSpaceItemDecoration;->this$0:Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$VerisonSpaceItemDecoration;->this$0:Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmContext(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$dimen;->card_margin_top:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
