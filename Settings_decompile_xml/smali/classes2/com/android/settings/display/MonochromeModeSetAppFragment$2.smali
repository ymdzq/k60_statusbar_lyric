.class Lcom/android/settings/display/MonochromeModeSetAppFragment$2;
.super Lmiuix/os/AsyncTaskWithProgress;
.source "MonochromeModeSetAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/MonochromeModeSetAppFragment;->loadPackages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/os/AsyncTaskWithProgress<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/display/MonochromeModeSetAppFragment$FilterItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMonochromeModeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/display/MonochromeModeSetAppFragment$FilterItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mMonochromeModeOffApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/display/MonochromeModeSetAppFragment$FilterItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

.field final synthetic val$appInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/display/MonochromeModeSetAppFragment;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    iput-object p3, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->val$appInfos:Ljava/util/List;

    invoke-direct {p0, p2}, Lmiuix/os/AsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeApps:Ljava/util/List;

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeOffApps:Ljava/util/List;

    .line 186
    new-instance p1, Lcom/android/settings/display/MonochromeModeSetAppFragment$2$1;

    invoke-direct {p1, p0}, Lcom/android/settings/display/MonochromeModeSetAppFragment$2$1;-><init>(Lcom/android/settings/display/MonochromeModeSetAppFragment$2;)V

    iput-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 170
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 171
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeOffApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 172
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->val$appInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 173
    iget-object v1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    invoke-static {v1}, Lcom/android/settings/display/MonochromeModeSetAppFragment;->-$$Nest$fgetmPkg2MonochromeMode(Lcom/android/settings/display/MonochromeModeSetAppFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    invoke-static {v1}, Lcom/android/settings/display/MonochromeModeSetAppFragment;->-$$Nest$fgetmPkg2MonochromeMode(Lcom/android/settings/display/MonochromeModeSetAppFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeApps:Ljava/util/List;

    new-instance v3, Lcom/android/settings/display/MonochromeModeSetAppFragment$FilterItemPreference;

    iget-object v4, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    invoke-static {v4}, Lcom/android/settings/display/MonochromeModeSetAppFragment;->access$000(Lcom/android/settings/display/MonochromeModeSetAppFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/android/settings/display/MonochromeModeSetAppFragment$FilterItemPreference;-><init>(Lcom/android/settings/display/MonochromeModeSetAppFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/display/MonochromeModeSetAppFragment;->-$$Nest$sfgetWHITE_LIST()Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeOffApps:Ljava/util/List;

    new-instance v2, Lcom/android/settings/display/MonochromeModeSetAppFragment$FilterItemPreference;

    iget-object v3, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    invoke-static {v3}, Lcom/android/settings/display/MonochromeModeSetAppFragment;->access$100(Lcom/android/settings/display/MonochromeModeSetAppFragment;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/settings/display/MonochromeModeSetAppFragment$FilterItemPreference;-><init>(Lcom/android/settings/display/MonochromeModeSetAppFragment;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_3
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeApps:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeOffApps:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    iget-object v0, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeApps:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->mMonochromeModeOffApps:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/android/settings/display/MonochromeModeSetAppFragment;->-$$Nest$mupdatePkgList(Lcom/android/settings/display/MonochromeModeSetAppFragment;Ljava/util/List;Ljava/util/List;)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$2;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/display/MonochromeModeSetAppFragment;->-$$Nest$fputmUpdatepkgListTask(Lcom/android/settings/display/MonochromeModeSetAppFragment;Lmiuix/os/AsyncTaskWithProgress;)V

    return-void
.end method
