.class Lcom/android/settings/applications/ApplicationsContainer$1$1;
.super Ljava/lang/Object;
.source "ApplicationsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ApplicationsContainer$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ApplicationsContainer$1;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer$1;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->this$1:Lcom/android/settings/applications/ApplicationsContainer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->this$1:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer;->-$$Nest$fgetmActivityResumed(Lcom/android/settings/applications/ApplicationsContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1001
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->this$1:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v1}, Lcom/android/settings/applications/ApplicationsContainer;->-$$Nest$fgetmTabs(Lcom/android/settings/applications/ApplicationsContainer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1002
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->this$1:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-static {v1}, Lcom/android/settings/applications/ApplicationsContainer;->-$$Nest$fgetmTabs(Lcom/android/settings/applications/ApplicationsContainer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 1003
    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 1004
    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->pause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1007
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$1$1;->this$1:Lcom/android/settings/applications/ApplicationsContainer$1;

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer;

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    if-eqz v0, :cond_2

    .line 1008
    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer;->-$$Nest$fgetmSortOrder(Lcom/android/settings/applications/ApplicationsContainer;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->resume(I)V

    :cond_2
    return-void
.end method
