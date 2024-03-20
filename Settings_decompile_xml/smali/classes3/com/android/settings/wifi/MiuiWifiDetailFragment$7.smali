.class Lcom/android/settings/wifi/MiuiWifiDetailFragment$7;
.super Ljava/lang/Object;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiDetailFragment;->updateAutoConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$7;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1112
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$7;->this$0:Lcom/android/settings/wifi/MiuiWifiDetailFragment;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->-$$Nest$fputmIsAutoConnect(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Z)V

    return-void
.end method
