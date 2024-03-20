.class final Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "MiuiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final mTetherSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/MiuiTetherSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 1

    .line 1660
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    .line 1661
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private update()V
    .locals 1

    .line 1675
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;->mTetherSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiTetherSettings;

    if-eqz p0, :cond_0

    .line 1677
    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .line 1671
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;->update()V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .line 1666
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;->update()V

    return-void
.end method
