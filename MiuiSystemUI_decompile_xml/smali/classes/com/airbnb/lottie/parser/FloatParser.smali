.class public final Lcom/airbnb/lottie/parser/FloatParser;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/FloatParser;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/airbnb/lottie/parser/FloatParser;

    .line 2
    invoke-direct {v0}, Lcom/airbnb/lottie/parser/FloatParser;-><init>()V

    .line 4
    sput-object v0, Lcom/airbnb/lottie/parser/FloatParser;->INSTANCE:Lcom/airbnb/lottie/parser/FloatParser;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Lcom/airbnb/lottie/parser/moshi/JsonReader;)F

    .line 2
    move-result p0

    .line 5
    mul-float/2addr p0, p2

    .line 6
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method
