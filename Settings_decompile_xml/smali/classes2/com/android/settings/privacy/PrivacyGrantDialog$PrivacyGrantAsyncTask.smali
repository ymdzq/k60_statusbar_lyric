.class Lcom/android/settings/privacy/PrivacyGrantDialog$PrivacyGrantAsyncTask;
.super Landroid/os/AsyncTask;
.source "PrivacyGrantDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacy/PrivacyGrantDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivacyGrantAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$PrivacyGrantAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    .line 74
    iput-object p2, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$PrivacyGrantAsyncTask;->packageName:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$PrivacyGrantAsyncTask;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$PrivacyGrantAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$PrivacyGrantAsyncTask;->url:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyGrantDialog$PrivacyGrantAsyncTask;->packageName:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/android/settings/privacy/PrivacyNetUtils;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 85
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/PrivacyGrantDialog$PrivacyGrantAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
