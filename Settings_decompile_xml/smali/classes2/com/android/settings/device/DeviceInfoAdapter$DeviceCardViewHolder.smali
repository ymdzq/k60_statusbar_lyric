.class public Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DeviceInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/DeviceInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceCardViewHolder"
.end annotation


# instance fields
.field card:Lcom/android/settings/device/BaseDeviceCardItem;

.field final synthetic this$0:Lcom/android/settings/device/DeviceInfoAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/DeviceInfoAdapter;Landroid/view/View;)V
    .locals 1

    .line 220
    iput-object p1, p0, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->this$0:Lcom/android/settings/device/DeviceInfoAdapter;

    .line 221
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 222
    sget p1, Lcom/android/settings/R$id;->base_card_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/BaseDeviceCardItem;

    iput-object p1, p0, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    goto :goto_0

    .line 225
    :cond_0
    check-cast p2, Lcom/android/settings/device/BaseDeviceCardItem;

    iput-object p2, p0, Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;->card:Lcom/android/settings/device/BaseDeviceCardItem;

    :goto_0
    return-void
.end method
