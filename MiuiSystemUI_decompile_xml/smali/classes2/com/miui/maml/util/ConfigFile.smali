.class public Lcom/miui/maml/util/ConfigFile;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigFile"

.field private static final METHOD:Ljava/lang/String; = "saveConfigFile"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final TAG_APP_PICKER:Ljava/lang/String; = "AppPicker"

.field public static final TAG_CHECK_BOX:Ljava/lang/String; = "CheckBox"

.field private static final TAG_GADGET:Ljava/lang/String; = "Gadget"

.field private static final TAG_GADGETS:Ljava/lang/String; = "Gadgets"

.field public static final TAG_GROUP:Ljava/lang/String; = "Group"

.field public static final TAG_IMAGE_PICKER:Ljava/lang/String; = "ImagePicker"

.field public static final TAG_NUMBER_CHOICE:Ljava/lang/String; = "NumberChoice"

.field public static final TAG_NUMBER_INPUT:Ljava/lang/String; = "NumberInput"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field public static final TAG_STRING_CHOICE:Ljava/lang/String; = "StringChoice"

.field public static final TAG_STRING_INPUT:Ljava/lang/String; = "StringInput"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"

.field private static final URI:Ljava/lang/String; = "content://com.miui.maml.provider"


# instance fields
.field private mDirty:Z

.field private mFilePath:Ljava/lang/String;

.field private mGadgets:Ljava/util/ArrayList;

.field private mSaveViaProvider:Z

.field private mTasks:Ljava/util/HashMap;

.field private mVariables:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 24
    return-void
    .line 26
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method private createNewFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    new-instance p0, Ljava/io/File;

    .line 8
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method private load(Ljava/lang/String;Z)Z
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    .line 12
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return v1

    .line 13
    :cond_4
    :try_start_3
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Config"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 14
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return v1

    .line 15
    :cond_6
    :try_start_5
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 16
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 17
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_7

    .line 18
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_8

    .line 19
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/maml/util/ConfigFile$4;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$4;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    .line 4
    const-string v1, "Gadgets"

    .line 7
    const-string v2, "Gadget"

    .line 9
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 11
    return-void
    .line 14
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 9
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 14
    move-result p2

    .line 17
    if-ge p1, p2, :cond_2

    .line 18
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 20
    move-result-object p2

    .line 23
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 24
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    check-cast p2, Lorg/w3c/dom/Element;

    .line 41
    invoke-interface {p4, p2}, Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    .line 43
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    return-void
    .line 49
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/maml/util/ConfigFile$3;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$3;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    .line 4
    const-string v1, "Tasks"

    .line 7
    const-string v2, "Intent"

    .line 9
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 11
    return-void
    .line 14
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/maml/util/ConfigFile$2;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$2;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    .line 4
    const-string v1, "Variables"

    .line 7
    const-string v2, "Variable"

    .line 9
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 11
    return-void
    .line 14
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const-string/jumbo v0, "string"

    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    const-string v0, "number"

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 39
    if-nez v0, :cond_2

    .line 41
    new-instance v0, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 43
    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile$Variable;-><init>()V

    .line 45
    iput-object p1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 48
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 50
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_2
    iput-object p3, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 55
    iput-object p2, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    .line 57
    :cond_3
    :goto_0
    return-void
    .line 59
.end method

.method private writeGadgets(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const-string v1, "Gadgets"

    .line 12
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 14
    const-string/jumbo v0, "x"

    .line 17
    const-string/jumbo v2, "y"

    .line 20
    const-string v3, "path"

    .line 23
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v2, :cond_1

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 45
    check-cast v2, Lcom/miui/maml/util/ConfigFile$Gadget;

    .line 46
    iget-object v4, v2, Lcom/miui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    .line 48
    iget v5, v2, Lcom/miui/maml/util/ConfigFile$Gadget;->x:I

    .line 50
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 55
    iget v2, v2, Lcom/miui/maml/util/ConfigFile$Gadget;->y:I

    .line 56
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    filled-new-array {v4, v5, v2}, [Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    const-string v4, "Gadget"

    .line 66
    invoke-static {p1, v4, v0, v2, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p1, v1, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 72
    return-void
    .line 75
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "<"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "/"

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">\n"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "<"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 8
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    if-eqz p4, :cond_0

    .line 9
    aget-object v0, p3, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, " "

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    aget-object v0, p3, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "/>\n"

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeTasks(Ljava/lang/StringBuilder;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const-string v1, "Tasks"

    .line 12
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 14
    sget-object v2, Lcom/miui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    .line 17
    sget-object v3, Lcom/miui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    .line 19
    sget-object v4, Lcom/miui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    .line 21
    sget-object v5, Lcom/miui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    .line 23
    sget-object v6, Lcom/miui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    .line 25
    sget-object v7, Lcom/miui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    .line 27
    sget-object v8, Lcom/miui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    .line 29
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 37
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v2, :cond_1

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 55
    check-cast v2, Lcom/miui/maml/util/Task;

    .line 56
    iget-object v4, v2, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 58
    iget-object v5, v2, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 60
    iget-object v6, v2, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    .line 62
    iget-object v7, v2, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    .line 64
    iget-object v8, v2, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    .line 66
    iget-object v9, v2, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    .line 68
    iget-object v10, v2, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    .line 70
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 75
    const-string v4, "Intent"

    .line 76
    invoke-static {p1, v4, v0, v2, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p1, v1, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 82
    return-void
    .line 85
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const-string v1, "Variables"

    .line 12
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 14
    const-string/jumbo v0, "type"

    .line 17
    const-string/jumbo v2, "value"

    .line 20
    const-string v3, "name"

    .line 23
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 29
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 31
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 48
    check-cast v2, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 49
    iget-object v3, v2, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 51
    iget-object v4, v2, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 53
    iget-object v2, v2, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    .line 55
    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 60
    const-string v3, "Variable"

    .line 61
    invoke-static {p1, v3, v0, v2}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    const/4 p0, 0x1

    .line 67
    invoke-static {p1, v1, p0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 68
    return-void
    .line 71
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/util/Task;

    .line 8
    return-object p0
    .line 10
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    .line 14
    :goto_0
    return-object p0
    .line 16
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public load(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadByIconStream(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;Z)Z

    .line 3
    move-result p0

    .line 6
    return p0
    .line 7
.end method

.method public loadDefaultSettings(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "Config"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/miui/maml/util/ConfigFile$1;

    .line 17
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$1;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    .line 19
    const-string p0, "Group"

    .line 22
    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 24
    :cond_1
    :goto_0
    return-void
    .line 27
.end method

.method public moveGadget(Lcom/miui/maml/util/ConfigFile$Gadget;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    .line 11
    return-void
    .line 13
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 0

    .line 3
    invoke-static {p2, p3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "string"

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    .line 9
    return-void
    .line 11
.end method

.method public putTask(Lcom/miui/maml/util/Task;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 13
    iget-object v1, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    .line 21
    :cond_1
    :goto_0
    return-void
    .line 23
.end method

.method public removeGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    .line 8
    return-void
    .line 10
.end method

.method public save(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/util/ConfigFile;->save(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public save(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6

    const-string v0, "ConfigFile"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config"

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v2, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 6
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    .line 7
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTasks(Ljava/lang/StringBuilder;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeGadgets(Ljava/lang/StringBuilder;)V

    const/4 v4, 0x1

    .line 9
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 10
    iget-boolean v2, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    if-eqz v2, :cond_0

    .line 11
    new-instance v0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;-><init>(Lcom/miui/maml/util/ConfigFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v4

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->removeFile(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "create target file or temp file failed"

    .line 14
    invoke-static {p1, p0, v0}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return v3

    :catch_1
    move-exception v5

    .line 15
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "temp"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    .line 17
    :cond_1
    invoke-direct {p0, v2}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 18
    :goto_0
    :try_start_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/maml/util/Utils;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/miui/maml/util/Utils;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v2, p1}, Lcom/miui/maml/util/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v2}, Lcom/miui/maml/util/Utils;->removeFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 24
    :goto_1
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    return v4

    :cond_3
    :try_start_3
    const-string/jumbo p0, "target file and temp file are not exists"

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return v3

    :catch_2
    move-exception p0

    const-string/jumbo p1, "write file error"

    .line 26
    invoke-static {p1, p0, v0}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return v3

    .line 27
    :catch_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "create target file failed"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public setSaveViaProvider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    .line 2
    return-void
    .line 4
.end method
