.class public final Lcom/android/systemui/flags/FeatureFlagsRelease;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/flags/FeatureFlags;


# instance fields
.field public final mBooleanCache:Ljava/util/Map;

.field public final mResources:Landroid/content/res/Resources;

.field public final mServerFlagReader:Lcom/android/systemui/flags/ServerFlagReaderImpl;

.field public final mSystemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/flags/SystemPropertiesHelper;Lcom/android/systemui/flags/ServerFlagReaderImpl;Lcom/android/systemui/flags/ConditionalRestarter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Ljava/util/HashMap;

    .line 5
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object p4, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mBooleanCache:Ljava/util/Map;

    .line 10
    new-instance p4, Ljava/util/HashMap;

    .line 12
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 14
    new-instance p4, Ljava/util/HashMap;

    .line 17
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mResources:Landroid/content/res/Resources;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mSystemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    .line 24
    iput-object p3, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mServerFlagReader:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p2, "can override: false"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    sget-object p2, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 7
    const-string v0, "Booleans: "

    .line 9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/systemui/flags/Flag;

    .line 40
    instance-of v2, v1, Lcom/android/systemui/flags/BooleanFlag;

    .line 42
    if-eqz v2, :cond_0

    .line 44
    instance-of v2, v1, Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 46
    if-eqz v2, :cond_0

    .line 48
    instance-of v2, v1, Lcom/android/systemui/flags/SysPropBooleanFlag;

    .line 50
    if-nez v2, :cond_1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mBooleanCache:Ljava/util/Map;

    .line 55
    invoke-interface {v1}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 60
    check-cast v2, Ljava/util/HashMap;

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    instance-of v2, v1, Lcom/android/systemui/flags/SysPropBooleanFlag;

    .line 69
    if-eqz v2, :cond_2

    .line 71
    move-object v2, v1

    .line 73
    check-cast v2, Lcom/android/systemui/flags/SysPropBooleanFlag;

    .line 74
    iget-object v3, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mSystemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    .line 76
    invoke-virtual {v2}, Lcom/android/systemui/flags/SysPropBooleanFlag;->getDefault()Ljava/lang/Boolean;

    .line 78
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    move-result v4

    .line 85
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    iget-object v2, v2, Lcom/android/systemui/flags/SysPropBooleanFlag;->name:Ljava/lang/String;

    .line 89
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    move-result v2

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    instance-of v2, v1, Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 96
    if-eqz v2, :cond_3

    .line 98
    move-object v2, v1

    .line 100
    check-cast v2, Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 101
    iget-object v3, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mResources:Landroid/content/res/Resources;

    .line 103
    iget v2, v2, Lcom/android/systemui/flags/ResourceBooleanFlag;->resourceId:I

    .line 105
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 107
    move-result v2

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    instance-of v2, v1, Lcom/android/systemui/flags/BooleanFlag;

    .line 112
    if-eqz v2, :cond_4

    .line 114
    move-object v2, v1

    .line 116
    check-cast v2, Lcom/android/systemui/flags/BooleanFlag;

    .line 117
    iget-boolean v2, v2, Lcom/android/systemui/flags/BooleanFlag;->default:Z

    .line 119
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    move-result v2

    .line 128
    goto :goto_1

    .line 129
    :cond_4
    const/4 v2, 0x0

    .line 130
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    const-string v4, "  "

    .line 133
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-interface {v1}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 138
    move-result-object v4

    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v4, ": "

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v4, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mBooleanCache:Ljava/util/Map;

    .line 150
    invoke-interface {v1}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 155
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    move-result-object v2

    .line 159
    check-cast v4, Ljava/util/HashMap;

    .line 160
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v1

    .line 165
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 172
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    goto/16 :goto_0

    .line 176
    :cond_5
    const-string p0, "Strings: "

    .line 178
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 183
    move-result-object p0

    .line 186
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 187
    move-result-object p0

    .line 190
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    move-result p1

    .line 194
    if-eqz p1, :cond_6

    .line 195
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    move-result-object p1

    .line 200
    check-cast p1, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 203
    move-result-object p1

    .line 206
    check-cast p1, Lcom/android/systemui/flags/Flag;

    .line 207
    instance-of p1, p1, Lcom/android/systemui/flags/StringFlag;

    .line 209
    goto :goto_2

    .line 211
    :cond_6
    return-void
    .line 212
.end method

.method public final isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/systemui/flags/ReleasedFlag;->name:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mServerFlagReader:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    .line 3
    iget-object p1, p1, Lcom/android/systemui/flags/ReleasedFlag;->namespace:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/flags/ServerFlagReaderImpl;->deviceConfig:Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabledInternal(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z
    .locals 2

    .line 8
    iget-object v0, p1, Lcom/android/systemui/flags/ResourceBooleanFlag;->name:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mResources:Landroid/content/res/Resources;

    iget p1, p1, Lcom/android/systemui/flags/ResourceBooleanFlag;->resourceId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabledInternal(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isEnabledInternal(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mBooleanCache:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mBooleanCache:Ljava/util/Map;

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p2

    .line 17
    check-cast v0, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease;->mBooleanCache:Ljava/util/Map;

    .line 23
    check-cast p0, Ljava/util/HashMap;

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/Boolean;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result p0

    .line 36
    return p0
    .line 37
.end method
