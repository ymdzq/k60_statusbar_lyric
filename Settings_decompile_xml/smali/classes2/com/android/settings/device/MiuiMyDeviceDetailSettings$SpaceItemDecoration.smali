.class public Lcom/android/settings/device/MiuiMyDeviceDetailSettings$SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MiuiMyDeviceDetailSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiMyDeviceDetailSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/MiuiMyDeviceDetailSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$SpaceItemDecoration;->this$0:Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 275
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eq p2, p3, :cond_0

    .line 276
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$SpaceItemDecoration;->this$0:Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmContext(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$dimen;->card_item_bottom:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
