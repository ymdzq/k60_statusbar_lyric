.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;
.super Lmiuix/os/AsyncTaskWithProgress;
.source "AutoDisableScreenButtonsAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->loadPackages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/os/AsyncTaskWithProgress<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0, p2}, Lmiuix/os/AsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 232
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmPackageManager(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 237
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 238
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 239
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/settings/AutoDisableScreenButtonsHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 242
    new-instance v4, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    iget-object v5, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v5, v1, v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmDisabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmEnabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .line 190
    invoke-super {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 191
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmEnabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$1;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmDisabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$2;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmEnabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    new-instance v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->auto_disable_screenbuttons_enabled_header_title:I

    iget-object v4, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v4}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmEnabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v4

    .line 211
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v5}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmEnabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v5

    .line 212
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 210
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V

    .line 213
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmEnabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmDisabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 217
    new-instance v0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    iget-object v1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmContext(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->auto_disable_screenbuttons_disabled_header_title:I

    iget-object v4, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v4}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmDisabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v4

    .line 218
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v5}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmDisabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v5

    .line 219
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 217
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;-><init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;Ljava/lang/String;)V

    .line 220
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmDisabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;->setItems(Ljava/util/List;)V

    .line 225
    iget-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 226
    iget-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmEnabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 227
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmDisabledApps(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
