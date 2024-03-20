.class Lcom/android/settings/provider/MiuiSettingsDataProvider$2;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "MiuiSettingsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/provider/MiuiSettingsDataProvider;->startTethering(Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/provider/MiuiSettingsDataProvider;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$2;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 198
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    const-string p0, "MiuiSettingsDataProvider"

    const-string/jumbo v0, "onTetheringFailed"

    .line 199
    invoke-static {p0, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 1

    .line 192
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    const-string p0, "MiuiSettingsDataProvider"

    const-string/jumbo v0, "onTetheringStarted"

    .line 193
    invoke-static {p0, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
