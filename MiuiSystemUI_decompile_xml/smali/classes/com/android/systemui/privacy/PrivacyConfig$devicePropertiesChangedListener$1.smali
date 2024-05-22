.class public final Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "privacy"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "camera_mic_icons_enabled"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    move-result v1

    .line 32
    iput-boolean v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 33
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 35
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    .line 37
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v1

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 55
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    check-cast v3, Lcom/android/systemui/privacy/PrivacyConfig$Callback;

    .line 61
    if-eqz v3, :cond_0

    .line 63
    iget-boolean v4, v0, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 65
    invoke-interface {v3, v4}, Lcom/android/systemui/privacy/PrivacyConfig$Callback;->onFlagMicCameraChanged(Z)V

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 71
    move-result-object v0

    .line 74
    const-string v1, "location_indicators_enabled"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 83
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p1, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 86
    move-result v1

    .line 89
    iput-boolean v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 92
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    .line 94
    check-cast v1, Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v1

    .line 101
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v3

    .line 105
    if-eqz v3, :cond_3

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 112
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 114
    move-result-object v3

    .line 117
    check-cast v3, Lcom/android/systemui/privacy/PrivacyConfig$Callback;

    .line 118
    if-eqz v3, :cond_2

    .line 120
    iget-boolean v4, v0, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 122
    invoke-interface {v3, v4}, Lcom/android/systemui/privacy/PrivacyConfig$Callback;->onFlagLocationChanged(Z)V

    .line 124
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 128
    move-result-object v0

    .line 131
    const-string v1, "media_projection_indicators_enabled"

    .line 132
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 134
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 140
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    move-result p1

    .line 145
    iput-boolean p1, v0, Lcom/android/systemui/privacy/PrivacyConfig;->mediaProjectionAvailable:Z

    .line 146
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 148
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    .line 150
    check-cast p0, Ljava/util/ArrayList;

    .line 152
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    move-result-object p0

    .line 157
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result p1

    .line 161
    if-eqz p1, :cond_5

    .line 162
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object p1

    .line 167
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 168
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 173
    check-cast p1, Lcom/android/systemui/privacy/PrivacyConfig$Callback;

    .line 174
    if-eqz p1, :cond_4

    .line 176
    invoke-interface {p1}, Lcom/android/systemui/privacy/PrivacyConfig$Callback;->onFlagMediaProjectionChanged()V

    .line 178
    goto :goto_2

    .line 181
    :cond_5
    return-void
    .line 182
.end method
