.class public final Lcom/android/settingslib/spa/debug/DebugFormatKt;
.super Ljava/lang/Object;
.source "DebugFormat.kt"


# direct methods
.method public static final debugArguments(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->getParameter()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/spa/framework/util/ParameterKt;->normalize(Ljava/util/List;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "normArguments.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->removeRange(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "[No arguments]"

    return-object p0
.end method

.method public static final debugBrief(Lcom/android/settingslib/spa/framework/common/SettingsEntry;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getOwner()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getLabel()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final debugBrief(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final debugContent(Lcom/android/settingslib/spa/framework/common/EntrySearchData;)Ljava/lang/String;
    .locals 9

    .line 28
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/EntrySearchData;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "search_title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/EntrySearchData;->getKeyword()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "search_keyword = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "\n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    .line 31
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final debugContent(Lcom/android/settingslib/spa/framework/common/EntryStatusData;)Ljava/lang/String;
    .locals 9

    .line 36
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/EntryStatusData;->isDisabled()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_disabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/EntryStatusData;->isSwitchOff()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_switch_off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "\n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    .line 39
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final debugContent(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "entryRepository"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 57
    invoke-static {v0, v2, v3, v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getSearchData$default(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/android/settingslib/spa/framework/common/EntrySearchData;

    move-result-object v4

    .line 58
    invoke-static {v0, v2, v3, v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getStatusData$default(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/android/settingslib/spa/framework/common/EntryStatusData;

    move-result-object v5

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getEntryPathWithLabel(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4}, Lcom/android/settingslib/spa/framework/common/EntrySearchData;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 60
    :cond_1
    invoke-virtual {v1, v7, v8}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getEntryPathWithTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v7, 0xf

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "------ STATIC ------"

    aput-object v9, v7, v8

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getOwner()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugBrief(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getOwner()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugArguments(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "owner = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getFromPage()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugBrief(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    move-object v8, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getFromPage()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v9}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugArguments(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    move-object v9, v2

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "linkFrom = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getToPage()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {v8}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugBrief(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getToPage()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {v9}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugArguments(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "linkTo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v7, v3

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hierarchy_path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v7, v3

    const/4 v2, 0x6

    const-string v3, "------ ATTRIBUTION ------"

    aput-object v3, v7, v2

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->isAllowSearch()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowSearch = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v7, v3

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->isSearchDataDynamic()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSearchDynamic = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v7, v3

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getHasMutableStatus()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSearchMutable = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v7, v3

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getHasSliceSupport()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasSlice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v7, v2

    const/16 v0, 0xb

    const-string v2, "------ SEARCH ------"

    aput-object v2, v7, v0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "search_path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, v7, v1

    if-eqz v4, :cond_6

    .line 76
    invoke-static {v4}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugContent(Lcom/android/settingslib/spa/framework/common/EntrySearchData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    const-string v0, "no search data"

    :cond_7
    const/16 v1, 0xd

    aput-object v0, v7, v1

    if-eqz v5, :cond_8

    .line 77
    invoke-static {v5}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugContent(Lcom/android/settingslib/spa/framework/common/EntryStatusData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    const-string v0, "no status data"

    :cond_9
    const/16 v1, 0xe

    aput-object v0, v7, v1

    .line 62
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "\n"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const/16 v16, 0x0

    .line 79
    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
