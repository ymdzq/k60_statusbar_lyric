.class public final Lcom/android/systemui/qs/QSTileHostExt$userEditedObserver$1;
.super Lcom/android/systemui/qs/SettingObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSTileHostExt;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHostExt;Lcom/android/systemui/util/settings/SystemSettingsImpl;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt$userEditedObserver$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    const-string/jumbo p1, "tile_host_edited_by_user"

    .line 4
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt$userEditedObserver$1;->this$0:Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->uiHandler:Landroid/os/Handler;

    .line 4
    new-instance p2, Lcom/android/systemui/qs/QSTileHostExt$init$1;

    .line 6
    const/4 v0, 0x3

    .line 8
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSTileHostExt$init$1;-><init>(Lcom/android/systemui/qs/QSTileHostExt;I)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method
