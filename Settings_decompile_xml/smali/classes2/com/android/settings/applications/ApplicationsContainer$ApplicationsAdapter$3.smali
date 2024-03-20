.class Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;
.super Landroid/os/AsyncTask;
.source "ApplicationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->resume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

.field final synthetic val$sort:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;I)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iput p2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->val$sort:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 610
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 613
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmSession(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 610
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 619
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmResumed(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Z)V

    .line 620
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->val$sort:I

    invoke-static {p1, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmLastSortMode(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;I)V

    .line 621
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method
