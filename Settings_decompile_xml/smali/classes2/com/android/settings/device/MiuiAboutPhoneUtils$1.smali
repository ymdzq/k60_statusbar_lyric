.class Lcom/android/settings/device/MiuiAboutPhoneUtils$1;
.super Ljava/lang/Object;
.source "MiuiAboutPhoneUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/MiuiAboutPhoneUtils;->getCpuInfo()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/MiuiAboutPhoneUtils;


# direct methods
.method constructor <init>(Lcom/android/settings/device/MiuiAboutPhoneUtils;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/android/settings/device/MiuiAboutPhoneUtils$1;->this$0:Lcom/android/settings/device/MiuiAboutPhoneUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "cpu[0-9]{1}"

    .line 523
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
