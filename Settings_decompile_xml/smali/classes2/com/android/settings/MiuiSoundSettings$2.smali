.class Lcom/android/settings/MiuiSoundSettings$2;
.super Landroid/database/ContentObserver;
.source "MiuiSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSoundSettings;Landroid/os/Handler;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings$2;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 899
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVibrateSettingsObserver, onChange(), selfChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiSoundSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings$2;->this$0:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiSoundSettings;->-$$Nest$msendRefreshMsg(Lcom/android/settings/MiuiSoundSettings;)V

    return-void
.end method
