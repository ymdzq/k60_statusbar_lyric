.class public final Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final signalInfo:Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;

    .line 7
    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;->signalInfo:Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 4
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->enabled:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v3, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 10
    const-string v4, "onWifiSignalChanged enabled: "

    .line 12
    invoke-static {v4, v2, v3}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 14
    :cond_0
    iput-boolean v2, v1, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->targetEnable:Z

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;->signalInfo:Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;

    .line 19
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityIn:Z

    .line 21
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->activityIn:Z

    .line 23
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->activityOut:Z

    .line 25
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->activityOut:Z

    .line 27
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->enabled:Z

    .line 29
    const/4 v4, 0x1

    .line 31
    if-eq v3, v2, :cond_1

    .line 32
    sget-object v3, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 34
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->enabled:Z

    .line 36
    move v2, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->qsIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 41
    if-eqz v3, :cond_3

    .line 43
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->connected:Z

    .line 45
    iget-boolean v6, v3, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 47
    if-eq v5, v6, :cond_3

    .line 49
    sget-object v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 51
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/IconState;->toString()Ljava/lang/String;

    .line 55
    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->connected:Z

    .line 58
    move v2, v4

    .line 60
    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->isTransient:Z

    .line 61
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->isTransient:Z

    .line 63
    const-string v7, ", to: "

    .line 65
    const-string v8, "WifiTile"

    .line 67
    if-eq v5, v6, :cond_5

    .line 69
    sget-object v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 71
    if-eqz v0, :cond_4

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    const-string v9, "isChanged: isTransient from: "

    .line 77
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 94
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_4
    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->isTransient:Z

    .line 98
    move v2, v4

    .line 100
    :cond_5
    if-eqz v3, :cond_6

    .line 101
    iget v5, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 103
    iget v6, v3, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    .line 105
    if-eq v5, v6, :cond_6

    .line 107
    iput v6, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 109
    move v2, v4

    .line 111
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 112
    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;->description:Ljava/lang/String;

    .line 114
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    move-result v5

    .line 119
    if-nez v5, :cond_8

    .line 120
    sget-object v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 122
    if-eqz v0, :cond_7

    .line 124
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    const-string v6, "isChanged: ssid from: "

    .line 130
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 147
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_7
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 151
    move v2, v4

    .line 153
    :cond_8
    if-eqz v3, :cond_9

    .line 154
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 156
    iget-object v3, v3, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    .line 158
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 160
    move-result p1

    .line 163
    if-nez p1, :cond_9

    .line 164
    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 166
    goto :goto_1

    .line 168
    :cond_9
    move v4, v2

    .line 169
    :goto_1
    if-nez v4, :cond_b

    .line 170
    if-eqz v0, :cond_a

    .line 172
    iget-object p0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 174
    const-string/jumbo p1, "setWifiIndicators: ignore in/out info change"

    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_a
    return-void

    .line 182
    :cond_b
    iget-boolean p0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 183
    if-eqz p0, :cond_c

    .line 185
    iget-object p0, v1, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->updateItems()V

    .line 189
    iget-boolean p0, v1, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->targetEnable:Z

    .line 192
    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 194
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    const/4 p0, 0x0

    .line 200
    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 201
    return-void
    .line 204
.end method
