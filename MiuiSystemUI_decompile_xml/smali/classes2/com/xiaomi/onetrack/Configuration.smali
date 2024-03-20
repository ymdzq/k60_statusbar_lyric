.class public final Lcom/xiaomi/onetrack/Configuration;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final f:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/Configuration$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 5
    iput-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->g:Z

    .line 10
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->h:Z

    .line 12
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->i:Z

    .line 14
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->k:Z

    .line 16
    iget-object v1, p1, Lcom/xiaomi/onetrack/Configuration$Builder;->a:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 20
    iget-object v1, p1, Lcom/xiaomi/onetrack/Configuration$Builder;->b:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/xiaomi/onetrack/Configuration;->b:Ljava/lang/String;

    .line 24
    iget-object v1, p1, Lcom/xiaomi/onetrack/Configuration$Builder;->c:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/xiaomi/onetrack/Configuration;->c:Ljava/lang/String;

    .line 28
    iget-object v1, p1, Lcom/xiaomi/onetrack/Configuration$Builder;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 30
    iput-object v1, p0, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 32
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->g:Z

    .line 34
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->i:Z

    .line 36
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->h:Z

    .line 38
    iget-boolean v0, p1, Lcom/xiaomi/onetrack/Configuration$Builder;->j:Z

    .line 40
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->j:Z

    .line 42
    iget-boolean p1, p1, Lcom/xiaomi/onetrack/Configuration$Builder;->k:Z

    .line 44
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/Configuration;->k:Z

    .line 46
    return-void
    .line 48
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x4

    .line 17
    if-le v1, v2, :cond_2

    .line 18
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v2

    .line 24
    if-ge v1, v2, :cond_3

    .line 25
    if-eqz v1, :cond_1

    .line 27
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 32
    move-result v3

    .line 35
    add-int/lit8 v3, v3, -0x2

    .line 36
    if-eq v1, v3, :cond_1

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    move-result v3

    .line 43
    sub-int/2addr v3, v2

    .line 44
    if-ne v1, v3, :cond_0

    .line 45
    goto :goto_1

    .line 47
    :cond_0
    const-string v2, "*"

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    goto :goto_2

    .line 53
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 54
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    return-object p0
    .line 71
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "\', international=false, region=\'null\', overrideMiuiRegionSetting=false, mode="

    .line 2
    const-string v1, "\', channel=\'"

    .line 4
    const-string v2, "\', pluginId=\'"

    .line 6
    const-string v3, "Configuration{appId=\'"

    .line 8
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 15
    invoke-static {v3}, Lcom/xiaomi/onetrack/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lcom/xiaomi/onetrack/Configuration;->b:Ljava/lang/String;

    .line 27
    invoke-static {v2}, Lcom/xiaomi/onetrack/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/xiaomi/onetrack/Configuration;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v0, ", GAIDEnable="

    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->g:Z

    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, ", IMSIEnable="

    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->h:Z

    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    const-string v0, ", IMEIEnable="

    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/Configuration;->i:Z

    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    const-string v0, ", ExceptionCatcherEnable="

    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-boolean p0, p0, Lcom/xiaomi/onetrack/Configuration;->j:Z

    .line 87
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    const-string p0, ", instanceId="

    .line 92
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/4 p0, 0x0

    .line 97
    invoke-static {p0}, Lcom/xiaomi/onetrack/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 101
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/16 p0, 0x7d

    .line 105
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object p0

    .line 114
    :catch_0
    const-string p0, ""

    .line 115
    return-object p0
    .line 117
.end method
