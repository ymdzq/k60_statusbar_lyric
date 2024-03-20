.class Lcom/android/settings/wifi/MiuiWifiSettings$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MiuiWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$6;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1077
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 1079
    sput-boolean p1, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsOnScroll:Z

    .line 1080
    sget-boolean p2, Lcom/android/settings/wifi/MiuiWifiSettings;->mCanUpdateWifiEntryPreferencesRunnable:Z

    if-eqz p2, :cond_2

    .line 1081
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings$6;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    .line 1082
    invoke-virtual {p2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings$6;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmUpdateWifiEntryPreferencesRunnable(Lcom/android/settings/wifi/MiuiWifiSettings;)Ljava/lang/Runnable;

    move-result-object v1

    .line 1084
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1087
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings$6;->this$0:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->-$$Nest$fgetmUpdateWifiEntryPreferencesRunnable(Lcom/android/settings/wifi/MiuiWifiSettings;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1088
    sput-boolean p1, Lcom/android/settings/wifi/MiuiWifiSettings;->mCanUpdateWifiEntryPreferencesRunnable:Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 1091
    sput-boolean p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsOnScroll:Z

    :cond_2
    :goto_0
    return-void
.end method
