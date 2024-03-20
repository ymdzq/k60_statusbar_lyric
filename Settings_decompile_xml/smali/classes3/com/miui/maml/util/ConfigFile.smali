.class public Lcom/miui/maml/util/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;,
        Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;,
        Lcom/miui/maml/util/ConfigFile$Gadget;,
        Lcom/miui/maml/util/ConfigFile$Variable;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveViaProvider:Z

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createNewFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 290
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 292
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 293
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-void
.end method

.method private load(Ljava/lang/String;Z)Z
    .locals 3

    .line 177
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 179
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 180
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 182
    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 183
    :cond_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    .line 187
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 188
    invoke-virtual {p2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 189
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    .line 200
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return v1

    .line 193
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

    .line 200
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    return v1

    .line 196
    :cond_6
    :try_start_5
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 197
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 198
    invoke-direct {p0, p2}, Lcom/miui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_7

    .line 200
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

    .line 182
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

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 398
    new-instance v0, Lcom/miui/maml/util/ConfigFile$4;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$4;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    const-string v1, "Gadgets"

    const-string v2, "Gadget"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V
    .locals 2

    .line 415
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    .line 419
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 420
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    .line 421
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    check-cast p2, Lorg/w3c/dom/Element;

    .line 423
    invoke-interface {p4, p2}, Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 389
    new-instance v0, Lcom/miui/maml/util/ConfigFile$3;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$3;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    const-string v1, "Tasks"

    const-string v2, "Intent"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 380
    new-instance v0, Lcom/miui/maml/util/ConfigFile$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$2;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    const-string v1, "Variables"

    const-string v2, "Variable"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "string"

    .line 431
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "number"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/ConfigFile$Variable;

    if-nez v0, :cond_2

    .line 435
    new-instance v0, Lcom/miui/maml/util/ConfigFile$Variable;

    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile$Variable;-><init>()V

    .line 436
    iput-object p1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 437
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_2
    iput-object p3, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 440
    iput-object p2, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private writeGadgets(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 335
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Gadgets"

    .line 338
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string/jumbo v0, "x"

    const-string/jumbo v2, "y"

    const-string v3, "path"

    .line 340
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/util/ConfigFile$Gadget;

    .line 344
    iget-object v4, v2, Lcom/miui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    iget v5, v2, Lcom/miui/maml/util/ConfigFile$Gadget;->x:I

    .line 345
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v2, v2, Lcom/miui/maml/util/ConfigFile$Gadget;->y:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "Gadget"

    .line 347
    invoke-static {p1, v4, v0, v2, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 349
    :cond_1
    invoke-static {p1, v1, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "<"

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, "/"

    .line 355
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">\n"

    .line 357
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 361
    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "<"

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 367
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    if-eqz p4, :cond_0

    .line 368
    aget-object v0, p3, p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, " "

    .line 370
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    .line 372
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    aget-object v0, p3, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    .line 374
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "/>\n"

    .line 376
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeTasks(Ljava/lang/StringBuilder;)V
    .locals 11

    .line 316
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Tasks"

    .line 319
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 321
    sget-object v2, Lcom/miui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    sget-object v3, Lcom/miui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    sget-object v4, Lcom/miui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    sget-object v5, Lcom/miui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    sget-object v6, Lcom/miui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    sget-object v7, Lcom/miui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    sget-object v8, Lcom/miui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/util/Task;

    .line 326
    iget-object v4, v2, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    iget-object v6, v2, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    iget-object v7, v2, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    iget-object v8, v2, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    iget-object v10, v2, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "Intent"

    .line 329
    invoke-static {p1, v4, v0, v2, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-static {p1, v1, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 298
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Variables"

    .line 301
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const-string/jumbo v0, "type"

    const-string/jumbo v2, "value"

    const-string v3, "name"

    .line 303
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 307
    iget-object v3, v2, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    iget-object v2, v2, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Variable"

    .line 310
    invoke-static {p1, v3, v0, v2}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 312
    invoke-static {p1, v1, p0}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/Task;

    return-object p0
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/Task;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/ConfigFile$Variable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadByIconStream(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadDefaultSettings(Lorg/w3c/dom/Element;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 256
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Lcom/miui/maml/util/ConfigFile$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$1;-><init>(Lcom/miui/maml/util/ConfigFile;)V

    const-string p0, "Group"

    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public moveGadget(Lcom/miui/maml/util/ConfigFile$Gadget;I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 0

    .line 222
    invoke-static {p2, p3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    .line 217
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "string"

    .line 212
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putTask(Lcom/miui/maml/util/Task;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 226
    iget-object v0, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcom/miui/maml/util/ConfigFile;->mDirty:Z

    if-eqz v0, :cond_0

    .line 99
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

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config"

    const/4 v3, 0x0

    .line 108
    invoke-static {v1, v2, v3}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 109
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    .line 110
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeTasks(Ljava/lang/StringBuilder;)V

    .line 111
    invoke-direct {p0, v1}, Lcom/miui/maml/util/ConfigFile;->writeGadgets(Ljava/lang/StringBuilder;)V

    const/4 v4, 0x1

    .line 112
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 114
    iget-boolean v2, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    if-eqz v2, :cond_0

    .line 115
    new-instance v0, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/miui/maml/util/ConfigFile$SaveAsyncTask;-><init>(Lcom/miui/maml/util/ConfigFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v4

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->removeFile(Ljava/lang/String;)Z

    const/4 v2, 0x0

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create target file or temp file failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_1
    move-exception v5

    .line 124
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 127
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

    .line 134
    :cond_1
    invoke-direct {p0, v2}, Lcom/miui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 145
    :goto_0
    :try_start_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/maml/util/Utils;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/miui/maml/util/Utils;->writeDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v2, p1}, Lcom/miui/maml/util/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v2}, Lcom/miui/maml/util/Utils;->removeFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    :goto_1
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    return v4

    :cond_3
    :try_start_3
    const-string/jumbo p0, "target file and temp file are not exists"

    .line 152
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return v3

    :catch_2
    move-exception p0

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "write file error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 136
    :catch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "create target file failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public setSaveViaProvider(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/miui/maml/util/ConfigFile;->mSaveViaProvider:Z

    return-void
.end method
