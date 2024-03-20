.class Lcom/android/settings/NotificationAppListSettings$AppAdapter$1;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationAppListSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/NotificationAppListSettings$AppAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationAppListSettings$AppAdapter;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings$AppAdapter$1;->this$1:Lcom/android/settings/NotificationAppListSettings$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 244
    sget v0, Lcom/android/settings/NotificationAppListSettings;->TAG_APP_ITEM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/NotificationAppListSettings$AppItem;

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    iget-object v1, p1, Lcom/android/settings/NotificationAppListSettings$AppItem;->mPkgName:Ljava/lang/String;

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    .line 247
    iget v2, p1, Lcom/android/settings/NotificationAppListSettings$AppItem;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    iget-object p0, p0, Lcom/android/settings/NotificationAppListSettings$AppAdapter$1;->this$1:Lcom/android/settings/NotificationAppListSettings$AppAdapter;

    iget-object p1, p1, Lcom/android/settings/NotificationAppListSettings$AppItem;->mLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/NotificationAppListSettings$AppAdapter;->this$0:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {p0, v0, p1, v1}, Lcom/android/settings/NotificationAppListSettings$AppAdapter;->-$$Nest$mstartPreferencePanel(Lcom/android/settings/NotificationAppListSettings$AppAdapter;Landroid/os/Bundle;Ljava/lang/String;Lmiuix/appcompat/app/Fragment;)V

    return-void
.end method
