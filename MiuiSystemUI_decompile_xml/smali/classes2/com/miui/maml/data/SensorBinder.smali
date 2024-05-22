.class public Lcom/miui/maml/data/SensorBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SensorBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "SensorBinder"

.field private static final THRESHOLD:F = 0.1f


# instance fields
.field private mEnable:Z

.field private mPaused:Z

.field private mRate:I

.field private mRegistered:Z

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mThreshold:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 6
    const-string/jumbo p2, "type"

    .line 8
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    .line 15
    const-string p2, "rate"

    .line 17
    const/4 v0, 0x3

    .line 19
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 20
    move-result p2

    .line 23
    iput p2, p0, Lcom/miui/maml/data/SensorBinder;->mRate:I

    .line 24
    const-string/jumbo p2, "threshold"

    .line 26
    const v0, 0x3dcccccd    # 0.1f

    .line 29
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 32
    move-result p2

    .line 35
    iput p2, p0, Lcom/miui/maml/data/SensorBinder;->mThreshold:F

    .line 36
    const-string p2, "enable"

    .line 38
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 50
    move-result p2

    .line 53
    iput-boolean p2, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 54
    :cond_0
    new-instance p2, Lcom/miui/maml/data/SensorBinder$1;

    .line 56
    invoke-direct {p2, p0}, Lcom/miui/maml/data/SensorBinder$1;-><init>(Lcom/miui/maml/data/SensorBinder;)V

    .line 58
    iput-object p2, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 61
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 63
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/data/SensorBinder;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/data/SensorBinder;->mThreshold:F

    .line 2
    return p0
    .line 4
.end method

.method private registerListener()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/miui/maml/data/MamlSensorManager;->getInstance()Lcom/miui/maml/data/MamlSensorManager;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    .line 15
    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 19
    iget-object v2, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    .line 21
    iget v3, p0, Lcom/miui/maml/data/SensorBinder;->mRate:I

    .line 23
    iget-object p0, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 25
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/miui/maml/data/MamlSensorManager;->registerListener(Landroid/content/Context;Ljava/lang/String;ILandroid/hardware/SensorEventListener;)V

    .line 27
    :cond_1
    :goto_0
    return-void
    .line 30
.end method

.method private unregisterListener()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/maml/data/MamlSensorManager;->getInstance()Lcom/miui/maml/data/MamlSensorManager;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/miui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 8
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/MamlSensorManager;->unregisterListener(Ljava/lang/String;Landroid/hardware/SensorEventListener;)V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    .line 2
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    .line 5
    return-void
    .line 8
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 2
    return-void
    .line 5
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SensorBinder$Variable;
    .locals 1

    .line 2
    new-instance v0, Lcom/miui/maml/data/SensorBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, p1, p0}, Lcom/miui/maml/data/SensorBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method public bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/SensorBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/SensorBinder$Variable;

    move-result-object p0

    return-object p0
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->pause()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    .line 8
    return-void
    .line 11
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mPaused:Z

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->registerListener()V

    .line 8
    return-void
    .line 11
.end method

.method public turnOffSensorBinder()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->unregisterListener()V

    .line 5
    return-void
    .line 8
.end method

.method public turnOnSensorBinder()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/data/SensorBinder;->mEnable:Z

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/data/SensorBinder;->registerListener()V

    .line 5
    return-void
    .line 8
.end method
