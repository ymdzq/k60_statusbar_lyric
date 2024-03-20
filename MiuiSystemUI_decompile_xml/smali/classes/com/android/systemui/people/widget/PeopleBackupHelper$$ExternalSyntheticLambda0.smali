.class public final synthetic Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/people/widget/PeopleBackupHelper;

.field public final synthetic f$1:Landroid/content/SharedPreferences$Editor;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/people/widget/PeopleBackupHelper;Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/widget/PeopleBackupHelper;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences$Editor;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/widget/PeopleBackupHelper;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/String;

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    goto/16 :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/people/widget/PeopleBackupHelper;->getEntryType(Ljava/util/Map$Entry;)Lcom/android/systemui/people/widget/PeopleBackupHelper$SharedFileEntryType;

    .line 27
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 31
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    const-string v5, "add_user_id_to_uri_"

    .line 36
    if-eq v3, v4, :cond_6

    .line 38
    const/4 v4, 0x2

    .line 40
    if-eq v3, v4, :cond_3

    .line 41
    const/4 p0, 0x3

    .line 43
    if-eq v3, p0, :cond_1

    .line 44
    const-string p0, "Key not identified, skipping: "

    .line 46
    const-string p1, "PeopleBackupHelper"

    .line 48
    invoke-static {p0, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto/16 :goto_0

    .line 53
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 58
    check-cast p0, Ljava/util/Set;

    .line 59
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    .line 69
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    invoke-static {p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    .line 75
    move-result v2

    .line 78
    iget-object v0, v0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 79
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 81
    move-result v0

    .line 84
    if-ne v2, v0, :cond_9

    .line 85
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 87
    move-result-object p1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 106
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 113
    invoke-interface {v1, p1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 114
    goto/16 :goto_0

    .line 117
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 119
    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    .line 121
    move-result v0

    .line 124
    if-eqz v0, :cond_9

    .line 125
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 130
    invoke-interface {v1, p1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 131
    goto/16 :goto_0

    .line 134
    :cond_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    move-result-object p1

    .line 139
    check-cast p1, Ljava/util/Set;

    .line 140
    invoke-static {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->fromString(Ljava/lang/String;)Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 142
    move-result-object v2

    .line 145
    iget v3, v2, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 146
    iget-object v0, v0, Lcom/android/systemui/people/widget/PeopleBackupHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 148
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 150
    move-result v0

    .line 153
    if-eq v3, v0, :cond_4

    .line 154
    goto :goto_0

    .line 156
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 157
    move-result-object p1

    .line 160
    new-instance v0, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda1;

    .line 161
    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleBackupHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 163
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 166
    move-result-object p0

    .line 169
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 170
    move-result-object p1

    .line 173
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 174
    move-result-object p0

    .line 177
    check-cast p0, Ljava/util/Set;

    .line 178
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 180
    move-result p1

    .line 183
    if-eqz p1, :cond_5

    .line 184
    goto :goto_0

    .line 186
    :cond_5
    const/4 p1, -0x1

    .line 187
    iput p1, v2, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 188
    invoke-virtual {v2}, Lcom/android/systemui/people/widget/PeopleTileKey;->toString()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 193
    invoke-interface {v1, p1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 194
    goto :goto_0

    .line 197
    :cond_6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 198
    move-result-object p1

    .line 201
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    move-result-object p1

    .line 205
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 206
    move-result p0

    .line 209
    if-nez p0, :cond_7

    .line 210
    goto :goto_0

    .line 212
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 213
    move-result-object p0

    .line 216
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    .line 217
    move-result p1

    .line 220
    if-eqz p1, :cond_8

    .line 221
    invoke-static {p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    .line 223
    move-result p1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 238
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 242
    move-result-object p0

    .line 245
    :cond_8
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 246
    move-result-object p0

    .line 249
    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    :cond_9
    :goto_0
    return-void
    .line 253
.end method
