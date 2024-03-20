.class Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$1;
.super Ljava/lang/Object;
.source "MaxAspectRatioSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$1;->this$1:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 242
    sget v0, Lcom/android/settings/MaxAspectRatioSettings;->TAG_APP_ITEM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MaxAspectRatioSettings$AppItem;

    .line 243
    invoke-static {p1}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fgetmRestrict(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fputmRestrict(Lcom/android/settings/MaxAspectRatioSettings$AppItem;Z)V

    .line 244
    invoke-virtual {p1}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fgetmRestrict(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)Z

    move-result v1

    invoke-static {v0, v1}, Lmiui/os/MiuiInit;->setRestrictAspect(Ljava/lang/String;Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$1;->this$1:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    iget-object v0, v0, Lcom/android/settings/MaxAspectRatioSettings;->mAdapter:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 247
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter$1;->this$1:Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;

    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$AppAdapter;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fgetmAppInfo(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 248
    invoke-static {p1}, Lcom/android/settings/MaxAspectRatioSettings$AppItem;->-$$Nest$fgetmRestrict(Lcom/android/settings/MaxAspectRatioSettings$AppItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "off"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "on"

    .line 247
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/android/settings/utils/AnalyticsUtils;->trackModifiedFullscreenModeEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
